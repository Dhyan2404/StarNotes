.class final Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadNoteAudioList$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;",
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
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadNoteAudioList$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadNoteAudioList$1;->invoke()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/request/audio/LoadAudioListRequest;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadNoteAudioList$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/request/audio/LoadAudioListRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    .line 3
    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    .line 4
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/request/audio/LoadAudioListRequest;->getAudioShapeBeanList()Ljava/util/List;

    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction$loadNoteAudioList$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/OpenDocumentAction;

    .line 6
    new-instance v1, Lcom/onyx/android/sdk/universal/editor/request/audio/CheckAndCorrectAudioDurationRequest;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/request/audio/CheckAndCorrectAudioDurationRequest;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/onyx/android/sdk/base/rx/RxBaseBenchmarkRequest;->execute()V

    return-object v0
.end method
