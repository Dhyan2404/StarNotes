.class public final synthetic Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->onSplitScreenShowSourceEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SplitScreenShowSourceEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$d;->e:Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$d;->e:Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;->access$checkPrepareOpenNoteEnabled(Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler;Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/view/EditorViewHandler$d;->a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z

    move-result p0

    return p0
.end method
