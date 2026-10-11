.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0017\u0010\n\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "",
        "h",
        "Ljava/lang/String;",
        "getPageId",
        "()Ljava/lang/String;",
        "pageId",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "i",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "shape",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V",
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
.field public final h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shape"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction;->i:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method

.method public static final synthetic access$locate(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction;->l()Lio/reactivex/rxjava3/core/Observable;

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
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getPageId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/page/LocateShapeInPageRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction;->i:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/request/page/LocateShapeInPageRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToCore(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/LocateShapeInPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
