.class public final Lcom/onyx/android/sdk/replicator/replicator/DocReplicator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->createObservable()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator$a;->e:Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;

    iput-object p2, p0, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator$a;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/reactivex/rxjava3/disposables/Disposable;)V
    .locals 1
    .param p1    # Lio/reactivex/rxjava3/disposables/Disposable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator$a;->e:Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;

    new-instance v0, Lcom/onyx/android/sdk/replicator/event/DocRequestEvent;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator$a;->f:Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/replicator/event/DocRequestEvent;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/replicator/event/DocRequestEvent;->setStatus(I)Lcom/onyx/android/sdk/replicator/event/DocRequestEvent;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/DocReplicator$a;->a(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method
