.class final Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$addShapes$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;->l(Ljava/lang/String;Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddShapesToOtherPageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddShapesToOtherPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$addShapes$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,171:1\n1855#2,2:172\n*S KotlinDebug\n*F\n+ 1 AddShapesToOtherPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$addShapes$1\n*L\n121#1:172,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "noteBundle",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
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
        "SMAP\nAddShapesToOtherPageAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddShapesToOtherPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$addShapes$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,171:1\n1855#2,2:172\n*S KotlinDebug\n*F\n+ 1 AddShapesToOtherPageAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$addShapes$1\n*L\n121#1:172,2\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $pageId:Ljava/lang/String;

.field final synthetic $shapeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;",
            "Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$addShapes$1;->$pageId:Ljava/lang/String;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$addShapes$1;->$shapeList:Ljava/util/List;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$addShapes$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$addShapes$1;->invoke(Lcom/onyx/android/sdk/note/NoteBundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$addShapes$1;->$pageId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->getPageByUniqueId(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$addShapes$1;->$shapeList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onyx/android/sdk/note/common/shape/Shape;

    .line 5
    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/document/page/NotePage;->getLayerIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->setLayerId(I)V

    .line 6
    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->updateShapeTime()V

    goto :goto_0

    .line 7
    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$addShapes$1;->$shapeList:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->addTransformedShapeList(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/Collection;)V

    .line 8
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$addShapes$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;->getPostShapeChangedEvent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddShapesToOtherPageAction$addShapes$1;->$shapeList:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/NoteBundle;->postAddShapeEvent(Ljava/util/List;)V

    :cond_2
    return-void
.end method
