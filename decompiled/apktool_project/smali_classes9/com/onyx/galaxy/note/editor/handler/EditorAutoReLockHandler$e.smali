.class public final Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler;->onReLockNoteEvent(Lcom/onyx/galaxy/note/editor/event/ReLockNoteEvent;)V
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
        "Lio/reactivex/rxjava3/functions/Predicate;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/galaxy/note/editor/event/ReLockNoteEvent;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/event/ReLockNoteEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$e;->e:Lcom/onyx/galaxy/note/editor/event/ReLockNoteEvent;

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

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/data/couchbase/base/BaseReplicatorModel;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$e;->e:Lcom/onyx/galaxy/note/editor/event/ReLockNoteEvent;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/event/ReLockNoteEvent;->getDocId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/EditorAutoReLockHandler$e;->a(Lcom/onyx/android/sdk/replicator/note/db/model/SyncNoteModel;)Z

    move-result p0

    return p0
.end method
