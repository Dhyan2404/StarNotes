.class final Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction$request$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/onyx/android/sdk/note/request/GetReferenceShapesRequest;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/note/request/GetReferenceShapesRequest;",
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
.field final synthetic $editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction$request$2;->$editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction$request$2;->this$0:Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/onyx/android/sdk/note/request/GetReferenceShapesRequest;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/note/request/GetReferenceShapesRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction$request$2;->$editorBundle:Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getWorkBundle()Lcom/onyx/android/sdk/universal/editor/WorkBundle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/WorkBundle;->getNoteBundle()Lcom/onyx/android/sdk/note/NoteBundle;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction$request$2;->this$0:Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;->getShapeList()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/note/request/GetReferenceShapesRequest;-><init>(Lcom/onyx/android/sdk/note/NoteBundle;Ljava/util/Collection;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction$request$2;->invoke()Lcom/onyx/android/sdk/note/request/GetReferenceShapesRequest;

    move-result-object p0

    return-object p0
.end method
