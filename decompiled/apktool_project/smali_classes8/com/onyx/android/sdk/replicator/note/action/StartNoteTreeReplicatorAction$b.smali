.class public final Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction;->start(Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;)Lio/reactivex/rxjava3/core/Observable;
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


# static fields
.field public static final e:Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction$b;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction$b;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction$b;->e:Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;->start()V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/action/StartNoteTreeReplicatorAction$b;->a(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V

    return-void
.end method
