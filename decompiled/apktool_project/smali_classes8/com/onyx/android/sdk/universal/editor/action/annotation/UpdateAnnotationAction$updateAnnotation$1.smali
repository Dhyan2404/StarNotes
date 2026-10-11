.class final Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction$updateAnnotation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;->l()Lio/reactivex/rxjava3/core/Observable;
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

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction$updateAnnotation$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction$updateAnnotation$1;->invoke(Lcom/onyx/android/sdk/note/NoteBundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction$updateAnnotation$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;->getInfo()Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;->getAnnotation()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction$updateAnnotation$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;->getAnnotationInfo()Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/note/common/shape/extension/ShapePersistOptionsKt;->setAnnotationInfoBean(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/annotation/AnnotationInfoBean;)V

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction$updateAnnotation$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;->getInfo()Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;->getVirtualPageBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getNoteInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/BoxInfo;->getId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocNotePage;->getNotePage(Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;Ljava/lang/String;)Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    sget-object v1, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction$updateAnnotation$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;->getInfo()Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;->getAnnotation()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->saveShape(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    .line 5
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction$updateAnnotation$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/annotation/UpdateAnnotationAction;->getInfo()Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;->getAnnotation()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/note/NoteBundle;->postAddShapeEvent(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    return-void
.end method
