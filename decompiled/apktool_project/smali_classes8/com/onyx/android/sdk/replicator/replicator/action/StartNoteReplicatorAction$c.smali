.class public final Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;->create()Lio/reactivex/rxjava3/core/Observable;
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
.field public final synthetic e:Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$c;->e:Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/data/account/AccountDataBundle;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/data/account/AccountDataBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/NetworkUtils;

    iget-object p0, p0, Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$c;->e:Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/onyx/android/sdk/base/utils/NetworkUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/data/account/AccountDataBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/StartNoteReplicatorAction$c;->a(Lcom/onyx/android/sdk/data/account/AccountDataBundle;)Z

    move-result p0

    return p0
.end method
