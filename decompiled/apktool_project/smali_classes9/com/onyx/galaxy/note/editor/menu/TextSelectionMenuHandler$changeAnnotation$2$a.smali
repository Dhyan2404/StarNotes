.class public final Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2;->invoke(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/shape/Shape;

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;Lcom/onyx/android/sdk/note/common/shape/Shape;II)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2$a;->e:Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2$a;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    iput p3, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2$a;->g:I

    iput p4, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2$a;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2$a;->e:Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2$a;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->getCenterTouchPoint(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2$a;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-direct {v1, p1, v0, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/BoxInfo;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    iget p1, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2$a;->g:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;->setStyle(Ljava/lang/Integer;)V

    iget p1, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2$a;->h:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;->setColor(Ljava/lang/Integer;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/selection/StartAnnotationSelectionAction;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2$a;->e:Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/selection/StartAnnotationSelectionAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/TextSelectionMenuHandler$changeAnnotation$2$a;->a(Lcom/onyx/android/sdk/universal/editor/request/page/FindVisibleBoxInfoByNotePageIdRequest;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
