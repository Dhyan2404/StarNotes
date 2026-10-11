.class final Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;->changeAnnotation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        ">;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "shapeList",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
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


# instance fields
.field final synthetic $color:I

.field final synthetic $style:I

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;II)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2;->this$0:Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;

    iput p2, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2;->$style:I

    iput p3, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2;->$color:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "shapeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/shape/Shape;

    .line 3
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2;->this$0:Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-interface {p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getPageUniqueId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->findVisibleBoxInfoByNotePageId$default(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/String;ZILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2$a;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2;->this$0:Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;

    iget v3, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2;->$style:I

    iget p0, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2;->$color:I

    invoke-direct {v1, v2, p1, v3, p0}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2$a;-><init>(Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;Lcom/onyx/android/sdk/note/common/shape/Shape;II)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2;->invoke(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
