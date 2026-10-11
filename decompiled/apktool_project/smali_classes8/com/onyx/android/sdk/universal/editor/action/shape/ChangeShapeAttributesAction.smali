.class public final Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChangeShapeAttributesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangeShapeAttributesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,79:1\n215#2,2:80\n*S KotlinDebug\n*F\n+ 1 ChangeShapeAttributesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction\n*L\n43#1:80,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B#\u0012\u0006\u0010\u0018\u001a\u00020\u0017\u0012\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00060\u0004\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u0014\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0002J\u0008\u0010\t\u001a\u00020\u0008H\u0002J \u0010\u000b\u001a\u0006\u0012\u0002\u0008\u00030\u00022\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0002R \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00060\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u000eR.\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u00100\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u000e\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;",
        "m",
        "",
        "n",
        "originAttrMap",
        "l",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "h",
        "Ljava/util/Map;",
        "shapeAttrPairs",
        "Landroid/graphics/Matrix;",
        "i",
        "getTransformShapeMatrixMap",
        "()Ljava/util/Map;",
        "setTransformShapeMatrixMap",
        "(Ljava/util/Map;)V",
        "transformShapeMatrixMap",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/Map;)V",
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
        "SMAP\nChangeShapeAttributesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangeShapeAttributesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,79:1\n215#2,2:80\n*S KotlinDebug\n*F\n+ 1 ChangeShapeAttributesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction\n*L\n43#1:80,2\n*E\n"
    }
.end annotation


# instance fields
.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "+",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shapeAttrPairs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;->h:Ljava/util/Map;

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;->i:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$addCommand(Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;->l(Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$apply(Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;->m()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$postShapeChangedEvent(Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;)V
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;->n()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction$b;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getTransformShapeMatrixMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;->i:Ljava/util/Map;

    return-object p0
.end method

.method public final l(Ljava/util/Map;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;->h:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/note/common/command/AttributesCommand;->setShapeOriginAttrMap(Ljava/util/Map;)Lcom/onyx/android/sdk/note/common/command/AttributesCommand;

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/command/AddUndoRedoCommandAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/command/AddUndoRedoCommandAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/note/common/command/Command;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final m()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction$apply$shapeOriginAttrMap$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction$apply$shapeOriginAttrMap$1;

    sget-object v2, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction$apply$shapeOriginAttrMap$2;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction$apply$shapeOriginAttrMap$2;

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->toMap(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;->h:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    sget-object v3, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->isReferenceShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isWidthChanged()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getShapeWidth()F

    move-result v3

    invoke-static {v3}, Lcom/onyx/android/sdk/note/extension/PhysiceExtKt;->toScreenStrokeWidth(F)F

    move-result v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeWidth(F)V

    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isLineStyleTypeChanged()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getLineStyleType()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setLineStyle(I)V

    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isColorChanged()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getColor()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setStrokeColor(I)V

    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isFillColorEnabledChanged()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isFillColorEnabled()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->enableFillColor(Z)V

    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isFillColorChanged()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->getFillColor()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/onyx/android/sdk/note/common/shape/ShapeStyle;->setFillColor(I)V

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method public final n()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->Companion:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean$Companion;->addShapesToChangedShapeBean(Ljava/util/Collection;)Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;->i:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->setTransformShapeMatrixMap(Ljava/util/Map;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final setTransformShapeMatrixMap(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            "+",
            "Landroid/graphics/Matrix;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/ChangeShapeAttributesAction;->i:Ljava/util/Map;

    return-void
.end method
