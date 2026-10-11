.class final Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onAudioShapeBeanCreatedEvent$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onAudioShapeBeanCreatedEvent$1;->invoke(Ljava/util/List;)V
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
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;",
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
.field final synthetic $event:Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanCreatedEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanCreatedEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onAudioShapeBeanCreatedEvent$1$1$1;->$event:Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanCreatedEvent;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/note/NoteBundle;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onAudioShapeBeanCreatedEvent$1$1$1;->$event:Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanCreatedEvent;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanCreatedEvent;->getShapeBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onAudioShapeBeanCreatedEvent$1$1$1;->$event:Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanCreatedEvent;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanCreatedEvent;->getShapeBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;->getAudioInfoBean()Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onAudioShapeBeanCreatedEvent$1$1$1;->$event:Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanCreatedEvent;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/AudioShapeBeanCreatedEvent;->getShapeBean()Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;->getResourceModel()Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;

    move-result-object p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/onyx/android/sdk/note/NoteBundle;->addAudioShapeBean(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/replicator/note/data/audio/AudioInfoBean;Lcom/onyx/android/sdk/replicator/note/db/model/ResourceModel;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorSyncEventHandler$onAudioShapeBeanCreatedEvent$1$1$1;->invoke(Lcom/onyx/android/sdk/note/NoteBundle;)Lcom/onyx/android/sdk/note/common/data/shape/ShapeBean;

    move-result-object p0

    return-object p0
.end method
