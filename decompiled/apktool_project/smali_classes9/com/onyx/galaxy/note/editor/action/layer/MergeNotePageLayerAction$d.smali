.class public final Lcom/onyx/galaxy/note/editor/action/layer/MergeNotePageLayerAction$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/action/layer/MergeNotePageLayerAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/action/layer/MergeNotePageLayerAction;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/action/layer/MergeNotePageLayerAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/layer/MergeNotePageLayerAction$d;->e:Lcom/onyx/galaxy/note/editor/action/layer/MergeNotePageLayerAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/action/layer/MergeNotePageLayerAction$d;->e:Lcom/onyx/galaxy/note/editor/action/layer/MergeNotePageLayerAction;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerMergedEvent;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/action/layer/MergeNotePageLayerAction$d;->e:Lcom/onyx/galaxy/note/editor/action/layer/MergeNotePageLayerAction;

    invoke-static {v1}, Lcom/onyx/galaxy/note/editor/action/layer/MergeNotePageLayerAction;->access$getSrcLayerIds$p(Lcom/onyx/galaxy/note/editor/action/layer/MergeNotePageLayerAction;)Ljava/util/List;

    move-result-object v1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/layer/MergeNotePageLayerAction$d;->e:Lcom/onyx/galaxy/note/editor/action/layer/MergeNotePageLayerAction;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/action/layer/MergeNotePageLayerAction;->access$getTargetLayerId$p(Lcom/onyx/galaxy/note/editor/action/layer/MergeNotePageLayerAction;)I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/events/note/NoteLayerMergedEvent;-><init>(Ljava/util/List;I)V

    invoke-static {p1, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method
