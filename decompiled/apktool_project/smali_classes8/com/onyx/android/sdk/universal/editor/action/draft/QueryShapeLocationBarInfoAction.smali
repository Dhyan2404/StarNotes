.class public final Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQueryShapeLocationBarInfoAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryShapeLocationBarInfoAction.kt\ncom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n1#1,58:1\n18#2,4:59\n50#2,7:63\n*S KotlinDebug\n*F\n+ 1 QueryShapeLocationBarInfoAction.kt\ncom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction\n*L\n45#1:59,4\n45#1:63,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0008\u0010\u0005\u001a\u00020\u0004H\u0002J\u0008\u0010\u0006\u001a\u00020\u0004H\u0002R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u0012\u001a\u00020\u00078\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000f\u0010\t\u001a\u0004\u0008\u0010\u0010\u000b\"\u0004\u0008\u0011\u0010\rR\u001a\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u00138\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001a\u00a8\u0006 "
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "m",
        "l",
        "",
        "h",
        "Z",
        "getCanNextShape",
        "()Z",
        "setCanNextShape",
        "(Z)V",
        "canNextShape",
        "i",
        "getCanPrevShape",
        "setCanPrevShape",
        "canPrevShape",
        "",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "j",
        "Ljava/util/List;",
        "visibleBoxList",
        "Landroid/graphics/RectF;",
        "k",
        "Landroid/graphics/RectF;",
        "currentViewport",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
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
        "SMAP\nQueryShapeLocationBarInfoAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QueryShapeLocationBarInfoAction.kt\ncom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction\n+ 2 measureTime.kt\nkotlin/time/MeasureTimeKt\n*L\n1#1,58:1\n18#2,4:59\n50#2,7:63\n*S KotlinDebug\n*F\n+ 1 QueryShapeLocationBarInfoAction.kt\ncom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction\n*L\n45#1:59,4\n45#1:63,7\n*E\n"
    }
.end annotation


# instance fields
.field public h:Z

.field public i:Z

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->j:Ljava/util/List;

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->k:Landroid/graphics/RectF;

    return-void
.end method

.method public static final synthetic access$prepare(Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->l()V

    return-void
.end method

.method public static final synthetic access$queryShapeLocationBarInfo(Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->m()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getCanNextShape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->h:Z

    return p0
.end method

.method public final getCanPrevShape()Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->i:Z

    return p0
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->j:Ljava/util/List;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->virtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;->getVisibleBoxInfoList()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->k:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->viewport(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getBox()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-void
.end method

.method public final m()V
    .locals 7

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->isDisposed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", isDisposed"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lkotlin/time/TimeSource$Monotonic;->INSTANCE:Lkotlin/time/TimeSource$Monotonic;

    invoke-virtual {v0}, Lkotlin/time/TimeSource$Monotonic;->markNow-z9LOYto()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v0

    sget-object v4, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocShapeLocation;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocShapeLocation;

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->j:Ljava/util/List;

    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->k:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v5, v6}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocShapeLocation;->hasNextShape(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/util/List;Landroid/graphics/RectF;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->h:Z

    iget-object v5, p0, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->j:Ljava/util/List;

    iget-object v6, p0, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->k:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v5, v6}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocShapeLocation;->hasPrevShape(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/util/List;Landroid/graphics/RectF;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->i:Z

    invoke-static {v2, v3}, Lkotlin/time/TimeSource$Monotonic$ValueTimeMark;->elapsedNow-UwyO8pc(J)J

    move-result-wide v2

    sget-object v0, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QueryShapeLocationBarInfoAction, isDisposed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->isDisposed()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", canNextShape = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->h:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", canPrevShape = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->i:Z

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " ---> "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lkotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v4, p0, v1}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final setCanNextShape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->h:Z

    return-void
.end method

.method public final setCanPrevShape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/draft/QueryShapeLocationBarInfoAction;->i:Z

    return-void
.end method
