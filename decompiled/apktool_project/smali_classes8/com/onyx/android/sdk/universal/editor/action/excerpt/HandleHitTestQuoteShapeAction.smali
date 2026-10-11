.class public final Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u001f\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u0008\u0010\u0005\u001a\u00020\u0000H\u0002J\u0008\u0010\u0006\u001a\u00020\u0000H\u0002R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR$\u0010\u0016\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "m",
        "n",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "h",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "hitTestVirtualPage",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "i",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "hitTestShape",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
        "j",
        "Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
        "getModel",
        "()Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;",
        "setModel",
        "(Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;)V",
        "model",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V",
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
.field public final h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/onyx/android/sdk/note/common/shape/Shape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public j:Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/BoxInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/onyx/android/sdk/note/common/shape/Shape;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hitTestVirtualPage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hitTestShape"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;->i:Lcom/onyx/android/sdk/note/common/shape/Shape;

    return-void
.end method

.method public static final synthetic access$loadExcerptCollection(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$showQuotePopupWindow(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;)Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;->m()Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;

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
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getModel()Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;->j:Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptCollectionByQuoteRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;->i:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/note/request/excerpt/LoadExcerptCollectionByQuoteRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToNote(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m()Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;
    .locals 6

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;->j:Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupEvent;

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;

    iget-object v4, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;->h:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;->i:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-direct {v3, v4, v5, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;)V

    invoke-direct {v2, v3}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/ShowQuotePopupArgs;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final n()Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;
    .locals 4

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;->j:Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowSourceEvent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getSourceDocId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;->getSourceShapeId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowSourceEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final setModel(Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/HandleHitTestQuoteShapeAction;->j:Lcom/onyx/android/sdk/replicator/note/db/model/ExcerptCollectionModel;

    return-void
.end method
