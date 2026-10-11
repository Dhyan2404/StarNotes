.class public final synthetic Lcom/onyx/android/sdk/replicator/replicator/action/StopTreeReplicatorAction$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/replicator/replicator/action/StopTreeReplicatorAction;->create()Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# static fields
.field public static final e:Lcom/onyx/android/sdk/replicator/replicator/action/StopTreeReplicatorAction$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/onyx/android/sdk/replicator/replicator/action/StopTreeReplicatorAction$a;

    invoke-direct {v0}, Lcom/onyx/android/sdk/replicator/replicator/action/StopTreeReplicatorAction$a;-><init>()V

    sput-object v0, Lcom/onyx/android/sdk/replicator/replicator/action/StopTreeReplicatorAction$a;->e:Lcom/onyx/android/sdk/replicator/replicator/action/StopTreeReplicatorAction$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "p0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;->stopReplicator()Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/replicator/replicator/action/StopTreeReplicatorAction$a;->a(Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;)Lcom/onyx/android/sdk/replicator/replicator/BaseReplicator;

    move-result-object p0

    return-object p0
.end method
