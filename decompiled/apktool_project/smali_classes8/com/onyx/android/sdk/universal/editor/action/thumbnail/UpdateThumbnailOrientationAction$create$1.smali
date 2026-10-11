.class final Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction$create$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
        "Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;",
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


# instance fields
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/note/NoteBundle;)Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;
    .locals 4
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "noteBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/NoteBundle;->getNoteDoc()Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/document/doc/NoteDocument;->getNoteModel()Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    move-result-object p1

    .line 3
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->getThumbnailRes()Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction$create$1$thumbnailRes$1;

    invoke-direct {v2, v0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction$create$1$thumbnailRes$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-static {v1, v2}, Lcom/onyx/android/sdk/base/extension/AnyKt;->getOrElse(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;

    .line 5
    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->getOrientation()Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;

    invoke-virtual {v3}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;->getOrientation()Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 7
    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;->getOrientation()Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;->setOrientation(Lcom/onyx/android/sdk/base/data/Orientation;)V

    .line 8
    :cond_0
    invoke-virtual {p1, v1}, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;->setThumbnailRes(Lcom/onyx/android/sdk/replicator/note/data/thumbnail/ThumbnailRes;)V

    .line 9
    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;->getEnableSaveNoteModel()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v1, :cond_1

    .line 10
    sget-object v1, Lcom/onyx/android/sdk/replicator/KSyncBundle;->INSTANCE:Lcom/onyx/android/sdk/replicator/KSyncBundle;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/replicator/KSyncBundle;->getUserNoteProvider()Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/onyx/android/sdk/replicator/note/db/NoteModelProviderKt;->saveNote(Lcom/onyx/android/sdk/replicator/note/db/NoteProvider;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)V

    .line 11
    :cond_1
    sget-object p1, Lcom/onyx/android/sdk/base/utils/Debug;->INSTANCE:Lcom/onyx/android/sdk/base/utils/Debug;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;

    invoke-static {v1}, Lcom/onyx/android/sdk/base/extension/AnyKt;->toSimpleNameString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNeedUpdateNoteModel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", orientation = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;->getOrientation()Lcom/onyx/android/sdk/base/data/Orientation;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0, v2}, Lcom/onyx/android/sdk/base/utils/Debug;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction$create$1;->this$0:Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction$create$1;->invoke(Lcom/onyx/android/sdk/note/NoteBundle;)Lcom/onyx/android/sdk/universal/editor/action/thumbnail/UpdateThumbnailOrientationAction;

    move-result-object p0

    return-object p0
.end method
