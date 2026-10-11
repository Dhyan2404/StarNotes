.class public final Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager;->onDocDataSyncProgressEvent(Lcom/onyx/android/sdk/replicator/event/DataSyncProgressEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# static fields
.field public static final e:Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$b<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$b;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$b;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$b;->e:Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPbFactory;->INSTANCE:Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPbFactory;

    new-instance p1, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1, v0}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPbFactory;->exportToDBFromPB(Lcom/onyx/android/sdk/replicator/note/proto/pb/UserPBDataContext;)V

    return-void
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/note/NoteReplicatorManager$b;->a(Lcom/onyx/android/sdk/replicator/replicator/ReplicatorManager;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
