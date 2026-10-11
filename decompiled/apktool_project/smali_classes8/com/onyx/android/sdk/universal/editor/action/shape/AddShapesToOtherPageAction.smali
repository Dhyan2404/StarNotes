.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction<",
        "Ljava/util/Map<",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "+",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddShapesToOtherPageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddShapesToOtherPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,171:1\n215#2,2:172\n*S KotlinDebug\n*F\n+ 1 AddShapesToOtherPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction\n*L\n157#1:172,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0000\n\u0002\u0010&\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0001B!\u0012\u0006\u00109\u001a\u000208\u0012\u0006\u0010!\u001a\u00020\u001e\u0012\u0008\u0008\u0002\u0010%\u001a\u00020\"\u00a2\u0006\u0004\u0008:\u0010;J\u001a\u0010\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014J\u0014\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0004H\u0002J(\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\n0\u00022\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J4\u0010\r\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u00042\u0018\u0010\u000c\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\n0\u0002H\u0002J:\u0010\u0012\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000e2\u0018\u0010\u0011\u001a\u0014\u0012\u0004\u0012\u00020\u0007\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00060\u0010H\u0002J\"\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00042\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u000eH\u0002J\"\u0010\u0017\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0006\u0010\u0015\u001a\u00020\u00142\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006H\u0002J\"\u0010\u0019\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u0006\u0010\u0015\u001a\u00020\u00142\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006H\u0002J\u001a\u0010\u001b\u001a\u0006\u0012\u0002\u0008\u00030\u00042\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0006H\u0002J\u001c\u0010\u001d\u001a\u00020\u001c2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u0002H\u0002R\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010%\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010(\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u001a\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010)R\u001a\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00030\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010)R\"\u00101\u001a\u00020+8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\r\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R(\u00107\u001a\u0004\u0018\u0001022\u0008\u00103\u001a\u0004\u0018\u0001028\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0012\u00104\u001a\u0004\u00085\u00106\u00a8\u0006<"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "q",
        "intersectBoxList",
        "",
        "s",
        "pageShapesMap",
        "n",
        "",
        "changedShapeMap",
        "",
        "entry",
        "o",
        "t",
        "",
        "pageId",
        "shapeList",
        "l",
        "tagShapeList",
        "r",
        "shapes",
        "p",
        "",
        "m",
        "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;",
        "i",
        "Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;",
        "noteContext",
        "",
        "j",
        "Z",
        "addToCmdStack",
        "k",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "virtualBoxInfo",
        "Ljava/util/List;",
        "changedReferenceShapes",
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "getChangedShapeBean",
        "()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;",
        "setChangedShapeBean",
        "(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V",
        "changedShapeBean",
        "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;",
        "<set-?>",
        "Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;",
        "getUndoRedoCommand",
        "()Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;",
        "undoRedoCommand",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;Z)V",
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
        "SMAP\nAddShapesToOtherPageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddShapesToOtherPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,171:1\n215#2,2:172\n*S KotlinDebug\n*F\n+ 1 AddShapesToOtherPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction\n*L\n157#1:172,2\n*E\n"
    }
.end annotation


# instance fields
.field public final i:Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Z

.field public final k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public o:Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;Z)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noteContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 3
    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->i:Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    .line 4
    iput-boolean p3, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->j:Z

    .line 5
    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    .line 6
    invoke-virtual {p2}, Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;->getShapeList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->l:Ljava/util/List;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->m:Ljava/util/List;

    .line 8
    new-instance p1, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-direct {p1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;-><init>()V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->n:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x1

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;Z)V

    return-void
.end method

.method public static final synthetic access$addShapes(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/lang/String;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->l(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$addUndoRedoCmd(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/util/Map;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->m(Ljava/util/Map;)V

    return-void
.end method

.method public static final synthetic access$apply(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->n(Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$applyPageShapes(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/util/Map;Ljava/util/Map$Entry;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->o(Ljava/util/Map;Ljava/util/Map$Entry;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$deleteShape(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->p(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$findBoxList(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->q()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getChangedReferenceShapes$p(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->m:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getVirtualBoxInfo$p(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    return-object p0
.end method

.method public static final synthetic access$savePageTagModel(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/lang/String;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->r(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$transform(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/util/List;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->s(Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateShapeRelations(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->t(Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;

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
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$k;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$k;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$l;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$l;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteScheduler(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$m;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$m;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$n;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$n;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getChangedShapeBean()Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->n:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    return-object p0
.end method

.method public final getUndoRedoCommand()Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->o:Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    return-object p0
.end method

.method public final l(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$addShapes$1;

    invoke-direct {v1, p1, p2, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$addShapes$1;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createLightNoteObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$a;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final m(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    invoke-direct {v0}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->m:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->n:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->setAddShapeList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->setRemoveShapeList(Ljava/util/List;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->n:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;->addChangedShapeBean(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    iget-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->j:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getCommandManager()Lcom/onyx/android/sdk/note/common/command/CommandManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/command/CommandManager;->addUndoRedoCommand(Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;)V

    :cond_2
    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->o:Lcom/onyx/android/sdk/note/common/command/UndoRedoCommand;

    return-void
.end method

.method public final n(Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "+",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$c;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/util/LinkedHashMap;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->concatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "concatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$d;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$d;-><init>(Ljava/util/LinkedHashMap;)V

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final o(Ljava/util/Map;Ljava/util/Map$Entry;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Ljava/util/Map$Entry<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$applyPageShapes$1;

    invoke-direct {v3, p0, p2, p1, v1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$applyPageShapes$1;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/util/Map$Entry;Ljava/util/Map;Ljava/util/List;)V

    invoke-static {v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createLightNoteObservable(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$e;

    invoke-direct {v3, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$e;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$f;

    invoke-direct {v3, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$f;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$g;

    invoke-direct {v3, v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$g;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    new-instance v3, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$h;

    invoke-direct {v3, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$h;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$i;

    invoke-direct {v2, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$i;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/util/List;)V

    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$j;

    invoke-direct {v0, p0, p2, v1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$j;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/util/Map$Entry;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 p1, 0x0

    invoke-virtual {v7, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;->setRender(Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;->getPostShapeChangedEvent()Z

    move-result p0

    invoke-virtual {v7, p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;->setPostShapeChangedEvent(Z)V

    invoke-virtual {v7}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final q()Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->i:Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->l:Ljava/util/List;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {p0, v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/extension/ComputeBoxListActionsKt;->findBoxListObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/note/common/document/doc/TransformShapeContext;Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final r(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$o;

    invoke-direct {v0, p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$o;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final s(Ljava/util/List;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/shape/CreatePageChangedShapesRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->k:Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->l:Ljava/util/List;

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/onyx/android/sdk/universal/editor/request/shape/CreatePageChangedShapesRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Ljava/util/List;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/request/shape/CreatePageChangedShapesRequest;->getPageShapesMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final setChangedShapeBean(Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->n:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    return-void
.end method

.method public final t(Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/request/excerpt/UpdateQuoteExcerptListRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->noteBundle(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/onyx/android/sdk/note/request/excerpt/UpdateQuoteExcerptListRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/extension/RxBaseAppActionKt;->submitRequestToNote(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/base/rx/RxBaseRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$p;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$p;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
