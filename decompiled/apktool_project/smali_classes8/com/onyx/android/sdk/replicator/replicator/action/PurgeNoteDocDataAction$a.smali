.class public final Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$a;->e:Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$a;->e:Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;

    invoke-static {p0}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;->access$getDocumentId$p(Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/PurgeNoteDocDataAction$a;->a(Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;)Z

    move-result p0

    return p0
.end method
