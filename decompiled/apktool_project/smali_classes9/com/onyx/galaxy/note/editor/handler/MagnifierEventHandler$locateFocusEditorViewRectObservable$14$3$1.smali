.class final Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3;->invoke(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMagnifierEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagnifierEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1041:1\n288#2,2:1042\n*S KotlinDebug\n*F\n+ 1 MagnifierEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3$1\n*L\n720#1:1042,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
        "workBundle",
        "Lcom/onyx/android/sdk/universal/editor/WorkBundle;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMagnifierEventHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MagnifierEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1041:1\n288#2,2:1042\n*S KotlinDebug\n*F\n+ 1 MagnifierEventHandler.kt\ncom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3$1\n*L\n720#1:1042,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $boxInfo:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $shapeRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/graphics/RectF;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/onyx/android/sdk/geometry/data/BoxInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3$1;->$shapeRectF:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3$1;->$boxInfo:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/universal/editor/WorkBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "workBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3$1;->$shapeRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3$1;->$boxInfo:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/WorkBundleKt;->collectIntersectsVisibleBoxList(Lcom/onyx/android/sdk/universal/editor/WorkBundle;Landroid/graphics/RectF;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3$1;->$boxInfo:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    .line 5
    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3$1;->$boxInfo:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    :cond_2
    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$locateFocusEditorViewRectObservable$14$3$1;->invoke(Lcom/onyx/android/sdk/universal/editor/WorkBundle;)Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p0

    return-object p0
.end method
